1.isEqualToString

* 스트링 값이 동일한지 BOOL값으로 알려준다. 

2.componentsSeparatedByString

* 특정 문자열 값을 기준으로 분리하여 배열로 넣어 준다.

		NSString *list = @"Karin, Carrie, David";
		NSArray *listItems = [list componentsSeparatedByString:@", "];

3.objectAtIndex

* 특정 배열의 인덱스를 선택 할 수 있게 해준다.


	    NSArray *firstDay = [fDay componentsSeparatedByString:@"/"];
	    NSUInteger fYearNum = [[firstDay objectAtIndex:0] integerValue];

4.integerValue

* 해당 스트링값을 인티저 값으로 바꿔준다.

