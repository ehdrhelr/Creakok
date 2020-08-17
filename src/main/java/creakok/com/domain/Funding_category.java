package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Funding_category {
	private long funding_category_code;
	private String funding_category_name;
}
