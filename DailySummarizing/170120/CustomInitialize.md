1.초기화

* 객체를 메모리에 생성하는 것.

* [[Person alloc] init]; 에서 init은 메서드 이다.

* NSObject의 메서드이므로 상속을 받을 수 있고, 오버라이드(재정의)가 가능하다.

2.사용예

* 메서드 정의시: 
	
		- (instancetype)initWithName:(NSString *)name; 
  
  와 같이 사용하며, 이때 init은 무조건 적어야 한다.

* instancetype는 `객체`를 의미한다.

* 메서드 재정의: 
		
		- (instancetype)initWithName:(NSString *)name{
		        
		        //부모 클래스에서 init 함수 호출!
		        
		        self = [super init)];
		            if(self){
		
		            self.name = name;
		
		            }
		        //리턴타입이 객체(instancetype)이므로 객체인 자기자신을 리턴해야 한다.
		        return self;
		      }

    