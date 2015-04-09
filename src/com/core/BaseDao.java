package com.core;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.util.Assert;

/**
 * 通过数据库处理DAO;
 * @author KEVIN 
 * @param <T>
 */
public class BaseDao<T> {
	private static final Logger LOG = LoggerFactory.getLogger(BaseDao.class);
	private Class<T> entityClass;
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@SuppressWarnings("unchecked")
	// 通过反射获取子类确定的泛型类
	public BaseDao() { 
	  Type genType = getClass().getGenericSuperclass(); 
	  Type[] params = ((ParameterizedType) genType).getActualTypeArguments(); 
	  entityClass = (Class<T>) params[0];
	}
	//根据ID加载PO实例 
	public T load(Serializable id) {
		return (T)hibernateTemplate.load(entityClass, id);
	}
	//根据ID获取PO实例 
	public T get(Serializable id) {
		return (T)hibernateTemplate.load(entityClass, id);
	}
	
	//获取PO的所有对象
	public List<T> loadAll() { 
		return hibernateTemplate.loadAll(entityClass);
	}
	// 保存PO
	public void save(T entity) throws DataAccessException {
		hibernateTemplate.save(entity);
	}
	
	// 删除PO
	public void delete(T entity) throws DataAccessException {
		hibernateTemplate.delete(entity);
	}

    // 删除PO
	public void deleteAll(List<?> entitys) throws DataAccessException {
		hibernateTemplate.deleteAll(entitys);
	}
	
	//更改PO 
	public void update(T entity) throws DataAccessException {
	  hibernateTemplate.update(entity); 
	}
	
	//执行HQL查询 
	public List<?> find(String hql) { 
	  return this.hibernateTemplate.find(hql); 
	} 
	//执行带参的HQL查询 
	public List<?> find(String hql, Object... params) { 
	  return this.hibernateTemplate.find(hql,params);
	}
	 //对延迟加载的实体PO执行初始化 
	public void initialize(Object entity) { 
	  this.hibernateTemplate.initialize(entity); 
	}
	
	
	//创建Query对象 
	public Query createQuery(String hql, Object... values) {
	  Assert.hasText(hql);
	  Query query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql);
	  for (int i = 0; i < values.length; i++) { 
	    query.setParameter(i, values[i]); 
	  } 
	  return query;
	} 
	//去除hql的select 子句
	private static String removeSelect(String hql) {
	  Assert.hasText(hql); 
	  int beginPos = hql.toLowerCase().indexOf("from"); 
	  Assert.isTrue(beginPos != -1, " hql : " + hql + " must has a keyword 'from'"); 
	  return hql.substring(beginPos); 
	} 
	 
	//去除hql的orderby 子句 
	private static String removeOrders(String hql) { 
	  Assert.hasText(hql); 
	  Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*", Pattern.CASE_INSENSITIVE);
	  Matcher m = p.matcher(hql); 
	  StringBuffer sb = new StringBuffer(); 
	  while (m.find()) { 
	    m.appendReplacement(sb, ""); 
	  } 
	  m.appendTail(sb); 
	  return sb.toString(); 
	} 
}
