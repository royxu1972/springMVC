package com.mvc.service;

import java.util.*;

import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.mvc.dao.QuizDao;
import com.mvc.model.Quiz;

@Service("quizService")
public class QuizService {
	@Resource
	private QuizDao quizDao;

	public void add(Quiz quiz) {
		quizDao.add(quiz);
	}

	public boolean exist(Quiz quiz) {
		return quizDao.findQuiz(quiz);
	}

	public int quizCount(String userType) {
		return quizDao.quizNum(userType);
	}

	/**
	 * 通过用户类型列出不同用户类型的问卷
	 * @param userType (中文用户CN 英文用户EN 全体用户ALL)
	 * @return
	 */
	
	public List<Quiz> list(String userType) {
		return quizDao.quizList(userType);
	}

	public void deleteAll(List<Quiz> quizs) throws DataAccessException {
		this.quizDao.deleteAll(quizs);
	}

	public List<Map<String, Object>> CScore(String userType) {// 统计计算
		List<Quiz> list = list(userType);

		List<Map<String, Object>> maplist = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		Quiz quizTemp = new Quiz();
		for (int i = 0; i < list.size(); i++) {
			quizTemp = list.get(i);
			maplist.add(CScore(quizTemp));
		}
		return maplist;

	}

	public Map<String, Object> CScore(Quiz quizTemp) {// 统计计算
		float SUM1 = 0, SUM2 = 0, SUM3 = 0, SUM4 = 0, SUM5 = 0, SUM6 = 0, SUM_ALL = 0, SUM_SUM_ALL;
		float temp5 = 0, SS_M = 0, SS_Dev = 0, SS_Stage = 0;
		float c_Score_A = 0, c_Score_D = 0, c_Score_W = 0;

		String user_id = quizTemp.getUser_id();
		int id = quizTemp.getId();
		int D_C_1, D_C_2, D_C_3, D_C_4, D_C_5, D_C_6, D_P_1, D_P_2, D_P_3, D_P_4, D_P_5, D_P_6;
		int W_C_1, W_C_2, W_C_3, W_C_4, W_C_5, W_C_6, W_P_1, W_P_2, W_P_3, W_P_4, W_P_5, W_P_6;
		// 问题1
		D_C_1 = quizTemp.getD_C_1();
		D_C_2 = quizTemp.getD_C_2();
		D_C_3 = quizTemp.getD_C_3();
		D_C_4 = quizTemp.getD_C_4();
		D_C_5 = quizTemp.getD_C_5();
		D_C_6 = quizTemp.getD_C_6();
		D_P_1 = quizTemp.getD_P_1();
		D_P_2 = quizTemp.getD_P_2();
		D_P_3 = quizTemp.getD_P_3();
		D_P_4 = quizTemp.getD_P_4();
		D_P_5 = quizTemp.getD_P_5();
		D_P_6 = quizTemp.getD_P_6();
		// 问题2
		W_C_1 = quizTemp.getW_C_1();
		W_C_2 = quizTemp.getW_C_2();
		W_C_3 = quizTemp.getW_C_3();
		W_C_4 = quizTemp.getW_C_4();
		W_C_5 = quizTemp.getW_C_5();
		W_C_6 = quizTemp.getW_C_6();
		W_P_1 = quizTemp.getW_P_1();
		W_P_2 = quizTemp.getW_P_2();
		W_P_3 = quizTemp.getW_P_3();
		W_P_4 = quizTemp.getW_P_4();
		W_P_5 = quizTemp.getW_P_5();
		W_P_6 = quizTemp.getW_P_6();
		
		System.out.println("W_P_1: "+W_P_1+ " W_P_2: "+W_P_2+" W_P_3: "+W_P_3+" W_P_4: "+W_P_4+" W_P_5: "+W_P_5+" W_P_6: "+W_P_6);
		
		System.out.println("W_C_1: "+W_C_1+ " W_C_2: "+W_C_2+" W_C_3: "+W_C_3+" W_C_4: "+W_C_4+" W_C_5: "+W_C_5+" W_C_6: "+W_C_6);
		
		System.out.println("D_P_1: "+D_P_1+ " D_P_2: "+D_P_2+" D_P_3: "+D_P_3+" D_P_4: "+D_P_4+" D_P_5: "+D_P_5+" D_P_6: "+D_P_6);
		
		System.out.println("D_C_1: "+D_C_1+ " D_C_2: "+D_C_2+" D_C_3: "+D_C_3+" D_C_4: "+D_C_4+" D_C_5: "+D_C_5+" D_C_6: "+D_C_6);
		
		
		// 1.每一阶段的4个值的和， 共6个阶段
		SUM1 = W_P_1 + W_C_1 + D_P_1 + D_C_1;
		SUM2 = W_P_2 + W_C_2 + D_P_2 + D_C_2;
		SUM3 = W_P_3 + W_C_3 + D_P_3 + D_C_3;
		SUM4 = W_P_4 + W_C_4 + D_P_4 + D_C_4;
		SUM5 = W_P_5 + W_C_5 + D_P_5 + D_C_5;
		SUM6 = W_P_6 + W_C_6 + D_P_6 + D_C_6;
		System.out.println("[-----1.每一阶段的4个值的和， 共6个阶段: SUM1: " + SUM1 + " SUM2:" + SUM2
				+ " SUM3: " + SUM3 + " SUM4: " + SUM4 + " SUM5: " + SUM5 + " SUM6: " + SUM6 + " "
				+ " -----]");

		// 2.每一阶段的4个值的和，再平方，共6个阶段：

		// 3.①的和，即SUM_ALL= SUM1+ SUM2+ SUM3+ SUM4+ SUM5+ SUM6
		SUM_ALL = SUM1 + SUM2 + SUM3 + SUM4 + SUM5 + SUM6;
		System.out
				.println("[-----①的和，即SUM_ALL= SUM1+ SUM2+ SUM3+ SUM4+ SUM5+ SUM6 "
						+ SUM_ALL + " -----]");

		// 4.②的和，即SUM12+ SUM22+ SUM32+ SUM42+ SUM52+ SUM62
		SUM_SUM_ALL = SUM1 * SUM1 + SUM2 * SUM2 + SUM3 * SUM3 + SUM4 * SUM4
				+ SUM5 * SUM5 + SUM6 * SUM6;
		System.out
				.println("[-----// 4.②的和，即SUM12+ SUM22+ SUM32+ SUM42+ SUM52+ SUM62 "
						+ SUM_SUM_ALL + " -----]");

		// 5.24个值得平方的和， 即w_p_12+ w_c_12+… …+ d_c_62
		temp5 = (D_C_1 * D_C_1 + D_C_2 * D_C_2 + D_C_3 * D_C_3 + D_C_4 * D_C_4
				+ D_C_5 * D_C_5 + D_C_6 * D_C_6 + D_P_1 * D_P_1 + D_P_2 * D_P_2
				+ D_P_3 * D_P_3 + D_P_4 * D_P_4 + D_P_5 * D_P_5 + D_P_6 * D_P_6
				+ W_C_1 * W_C_1 + W_C_2 * W_C_2 + W_C_3 * W_C_3 + W_C_4 * W_C_4
				+ W_C_5 * W_C_5 + W_C_6 * W_C_6 + W_P_1 * W_P_1 + W_P_2 * W_P_2
				+ W_P_3 * W_P_3 + W_P_4 * W_P_4 + W_P_5 * W_P_5 + W_P_6 * W_P_6);

		System.out.println("[-----5.24个值得平方的和， 即w_p_12+ w_c_12+… …+ d_c_62 "
				+ temp5 + "-----]");

		// 6. SSM = SUM_ALL*SUM_ALL/ 24
		SS_M = SUM_ALL * SUM_ALL / 24;
		System.out.println("[-----6. SSM = SUM_ALL*SUM_ALL/ 24 " + SS_M + "-----]");

		// 7. SSDev = ⑤-⑥
		SS_Dev = temp5 - SS_M;
		System.out.println("[-----7. SSDev = ⑤-⑥ " + SS_Dev + "-----]");

		// 8. ⑧：SSStage =④/4- ⑥
		SS_Stage = SUM_SUM_ALL / 4 - SS_M;
		System.out.println("[-----8. ⑧：SSStage =④/4- ⑥ " + SS_Stage + "-----]");

		// 9 ⑨：C = 100*⑧/⑦
		c_Score_A = 100 * SS_Stage / SS_Dev;
		System.out.println("[-----9 ⑨：C = 100*⑧/⑦ " + c_Score_A + "-----]");

		/*
		 * 计算工厂风波c分数
		 */
		SUM1 = W_P_1 + W_C_1;
		SUM2 = W_P_2 + W_C_2;
		SUM3 = W_P_3 + W_C_3;
		SUM4 = W_P_4 + W_C_4;
		SUM5 = W_P_5 + W_C_5;
		SUM6 = W_P_6 + W_C_6;
		SUM_ALL = SUM1 + SUM2 + SUM3 + SUM4 + SUM5 + SUM6;
		SUM_SUM_ALL = SUM1 * SUM1 + SUM2 * SUM2 + SUM3 * SUM3 + SUM4 * SUM4
				+ SUM5 * SUM5 + SUM6 * SUM6;
		temp5 = (W_C_1 * W_C_1 + W_C_2 * W_C_2 + W_C_3 * W_C_3 + W_C_4 * W_C_4
				+ W_C_5 * W_C_5 + W_C_6 * W_C_6 + W_P_1 * W_P_1 + W_P_2 * W_P_2
				+ W_P_3 * W_P_3 + W_P_4 * W_P_4 + W_P_5 * W_P_5 + W_P_6 * W_P_6);
		SS_M = SUM_ALL * SUM_ALL / 24;
		SS_Dev = temp5 - SS_M;
		SS_Stage = SUM_SUM_ALL / 4 - SS_M;
		c_Score_W = 100 * SS_Stage / SS_Dev;

		/**
		 * 计算医生烦恼问题C分数
		 */
		SUM1 = D_P_1 + D_C_1;
		SUM2 = D_P_2 + D_C_2;
		SUM3 = D_P_3 + D_C_3;
		SUM4 = D_P_4 + D_C_4;
		SUM5 = D_P_5 + D_C_5;
		SUM6 = D_P_6 + D_C_6;
		SUM_ALL = SUM1 + SUM2 + SUM3 + SUM4 + SUM5 + SUM6;

		SUM_SUM_ALL = SUM1 * SUM1 + SUM2 * SUM2 + SUM3 * SUM3 + SUM4 * SUM4
				+ SUM5 * SUM5 + SUM6 * SUM6;
		temp5 = (D_C_1 * D_C_1 + D_C_2 * D_C_2 + D_C_3 * D_C_3 + D_C_4 * D_C_4
				+ D_C_5 * D_C_5 + D_C_6 * D_C_6 + D_P_1 * D_P_1 + D_P_2 * D_P_2
				+ D_P_3 * D_P_3 + D_P_4 * D_P_4 + D_P_5 * D_P_5 + D_P_6 * D_P_6);
		SS_M = SUM_ALL * SUM_ALL / 24;
		SS_Dev = temp5 - SS_M;
		SS_Stage = SUM_SUM_ALL / 4 - SS_M;
		c_Score_D = 100 * SS_Stage / SS_Dev;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("user_id", user_id);
		map.put("c_Score_D", c_Score_D);
		map.put("c_Score_W", c_Score_W);
		map.put("c_Score_A", c_Score_A);
		System.err.println("c_Score_D" + c_Score_D + "   c_Score_W" + c_Score_W
				+ "    c_Score_A" + c_Score_A);
		return map;

	}

	public String CSoreBac() {// 统计计算
		List<?> list = quizDao.quizAvg();
		Object[] o = (Object[]) list.get(0);
		// System.out.println(Float.valueOf(o[0].toString()));
		/*
		 * List<Object[]> quizAvg=new ArrayList<Object[]>(); for(Object
		 * temp:list){ quizAvg.add((String[])temp); }
		 */
		float SS_M = 0, SS_Dev = 0, temp = 0, SS_stage = 0, C_Score = 0;
		for (int i = 0; i < 12; i++) {
			temp = temp + Float.valueOf(o[i].toString());
		}
		SS_M = (temp * temp) / 24;// 24个变量和的平方

		temp = 0;
		for (int i = 0; i < 12; i++) {
			temp = temp + Float.valueOf(o[i].toString())
					* Float.valueOf(o[i].toString());
		}
		SS_Dev = temp - SS_M;// 24个变量平方和

		for (int j = 0; j < 6; j++) {
			temp = 0;
			for (int i = j; i < 19 + j; i += 6) {
				temp = temp + Float.valueOf(o[i].toString());
			}
			SS_stage += temp * temp;
		}
		SS_stage = SS_stage / 4 - SS_M;// 计算阶段总体平方和
		C_Score = (SS_stage / SS_Dev) * 100;
		return String.valueOf(C_Score);
	}
}
