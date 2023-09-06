package kbits.kb04.parasol.finance.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class SavingDto {

	private Long savingNo;
	private String savingName;
	private Integer savingPeriod;
	private Integer savingMax;
	private Float savingRate;
	private String savinLink;
}