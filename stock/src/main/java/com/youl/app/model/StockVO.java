package com.youl.app.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StockVO {
	
	public String s_user;			// 작성자

	public int	  s_num;			// 게시글 번호	PK
	public String s_name;			// 종목명
	
	public int	  s_buy;			// 매수가
	public int 	  s_amount;			// 매수 수량
	public String s_buyDate;		// 매수일
	public int	  s_total_buy;		// 총 매수 금액
	
	public int	  s_sell;			// 매도가
	public String s_sellDate;		// 매도일
	public int	  s_total_sell;		// 총 매도 금액
	public float  s_rate;			// 수익률
	public int	  s_benefit;		// 실현 수익
}

