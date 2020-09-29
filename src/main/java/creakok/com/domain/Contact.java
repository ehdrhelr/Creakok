package creakok.com.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Contact {
	private long contact_index;
	private String contact_name;
	private String contact_email;
	private String contact_subject;
	private String contact_message;
	private String contact_ok;
}
