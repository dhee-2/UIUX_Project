import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor = Color(0xffa3ecec);
  static const secondaryColor = Color(0xff081053);
  static const tertiaryColor = Color(0xff010209);
  static const darkSecondaryColor = Color(0xff080e2b);
  static const lightTertiaryColor = Color(0xff040613);
  static const white = Colors.white;
  static const lightSecondary = Color(0xff1f2972);
}

//메인 파일
const home_picture = [
  {
    'imagePath': 'assets/tour_1.png',
    'placeName': '성산 일출봉',
    'placeCount': '제주도 대표 명소',
    'placeContext': "제주 서귀포시 성산읍 성산리 1\n\n제주도에 간다면 무조건 들러야하는 제주도의 대표 명소\n경사로는 가파른 편이지만 왕복 1시간이며\n아름다운 정상 전망을 보여줍니다.",
  },

  {
    'imagePath': 'assets/tour_2.png',
    'placeName': '한라산 국립공원',
    'placeCount': '제주도 대표 국립공원',
    'placeContext': "제주 제주시 오라이동 산107-20\n\n처음 방문시 영실코스로 방문하는 것을 추천한다.\n등산 초보자들에게도 어렵지 않으며\n남쪽 산방산과 서쪽 비양도에 한 눈에 들어올만큼\n아름다운 전망을 볼 수 있다.",
  },
  {
    'imagePath': 'assets/tour_3.png',
    'placeName': '만장굴',
    'placeCount': '제주도 대표 용암동굴',
    'placeContext': "제주 제주시 구좌읍 만장굴길 182\n\n제주도에는 약 80여개의 용암동굴이 존재하지만\n그 중에서 가장 길며 뛰어난 전망을 보여준다.",
  },
  {
    'imagePath': 'assets/tour_4.png',
    'placeName': '동문 재래시장',
    'placeCount': '제주도 대표 재래시장',
    'placeContext': "제주 제주시 관덕로14길 20\n\n먹거리와 동시에 볼거리도 다양한 재래시장이다.\n푸드트럭처럼 다양한 음식들을 판매하며\n웨이팅이 은근히 긴 편이다.",
  },
  {
    'imagePath': 'assets/tour_5.png',
    'placeName': '협재 해수욕장',
    'placeCount': '제주도 대표 해수욕장',
    'placeContext': "제주 제주시 한림읍 협재리 2497-1\n\n바다 물색이 에메랄드 색처럼 너무나도 이쁜 해수욕장이다.\n모래도 고우며 관리가 잘 된편이라\n깨끗한 해수욕장 중 하나로 꼽힌다.\n포토존도 상당히 많으니 꼭 방문하는 것을 추천한다.",
  },

  {
    'imagePath': 'assets/tour_6.png',
    'placeName': '대포해안주상절리대',
    'placeCount': '제주도 대표 주상절리',
    'placeContext': "제주 서귀포시 이어도로 36-24\n\n바위가 깎아놓은 듯한 조각품이라 불리는 주상절리이다.\n제주도가 화산섬이라고 실감나게 해주는 절경을 보여줍니다.",
  },
  {
    'imagePath': 'assets/tour_7.png',
    'placeName': '천지연 폭포',
    'placeCount': '제주도 대표 폭포',
    'placeContext': "제주 서귀포시 천지동 667-7\n\n서귀포에 있는 대표 폭포 중 하나이며,\n어느 각도에서 봐도 아름다운 전경을 보여주며\n야간에 방문에도 조명으로 인해 관람이 가능하다.",
  }
];


//식당 제주 모범음식점 api
const restaurant_picture = [
  {
    'imagePath': 'assets/food1.png',
    'placeName': '푸른밤의해안속초',
    'placeCount': '갈치조림, 고등어조림\n모듬회',
    'placeContext': "제주특별자치도 제주시 노형로 40\n\n매일 08:00 ~ 21:00\n\n제주시 해안동에 위치한 제주 향토 음식점\n회무침, 계란찜, 생선튀김 등 매일 새롭게 밑반찬 제공",
  },
  {
    'imagePath': 'assets/food2.jpg',
    'placeName': '제주광해 애월',
    'placeCount': '갈치조림, 고등어조림\n전복뚝배기',
    'placeContext': "제주특별자치도 제주시 애월해안로 867\n\n매일 10:00 ~ 20:00\n\n방송 프로그램 맛있는녀석들 353회 출연한 갈치조림 맛집",
  },
  {
    'imagePath': 'assets/food3.jpg',
    'placeName': '영복갈비',
    'placeCount': '소양념갈비, 돼지생갈비\n오겹살, 소갈비살',
    'placeContext': "제주특별자치도 제주시 우정로5길 5\n\n월,화,수,금,토,일 11:00 ~ 22:00\n목요일 정기휴무\n\n도민 추천 맛집, 고기 주문시 냉면 서비스",
  },
  {
    'imagePath': 'assets/food4.jpg',
    'placeName': '시청그때그집',
    'placeCount': '흑돼지 오겹살&목살\n김치찌개',
    'placeContext': "제주특별자치도 제주시 동광로1길 11\n\n월,화,목,금,토,일 11:00 ~ 22:30\n15:00 ~ 17:00 브레이크타임, 수요일 정기휴무\n\n제주 12군데 직영점을 운영중인 흑돼지 전문점",
  },
  {
    'imagePath': 'assets/food5.jpg',
    'placeName': '아일랜드본섬',
    'placeCount': '아일랜드 특선, 모둠회\n참치회, 초밥',
    'placeContext': "제주특별자치도 제주시 신설로6길 1-1\n\n월,수,목,금,토,일 11:00 ~ 22:00\n화요일 정기휴무\n\n맛있는 참치 초밥을 찾는 분들에게 추천\n부모님 생신이나 특별한날 그리고 기념일 등에 소중한 분들에게 맛있는 참치와 초밥을 대접하고 싶다면 저희를 찾아주세요",
  },
  {
    'imagePath': 'assets/food6.jpg',
    'placeName': '삼춘이야기노형점',
    'placeCount': '항아리수제갈비\n흑오겹살, 흑목살',
    'placeContext': "제주특별자치도 제주시 광평동로 45\n\n월,화,수,목,금,토 11:30 ~ 23:00\n일요일 정기휴무\n\n제주도민이 추천하는 항아리 갈비 맛집",
  },
  {
    'imagePath': 'assets/food7.jpg',
    'placeName': '제주늘봄',
    'placeCount': '갈비살, 꽃갈비살, 안창살\n불고기, 늘봄한우탕',
    'placeContext': "제주특별자치도 제주시 고사마루길 6\n\n매일 11:00 ~ 21:50\n\n30년 전통 유명 소고기 맛집, 소고기관/흑돼지관/별관 세개의 테마로 운영",
  },
  {
    'imagePath': 'assets/food8.jpg',
    'placeName': '오조해녀의집',
    'placeCount': '전복죽, 전복\n소라, 해삼, 문어',
    'placeContext': "제주특별자치도 서귀포시 성산읍 한도로 141-13\n\n매일 07:00 ~ 19:00\n\n전복죽과 전복회 등 전복 한가지로 전국에서 규모가 가장 큰 집\n해녀들이 채취한 해산물로 오조리어촌계원 해녀들이 직접 운영",
  },
  {
    'imagePath': 'assets/food9.jpg',
    'placeName': '셰프와흑돼지',
    'placeCount': '흑돼지 전복두루치기\n흑돼지김치전골, 셰프정식',
    'placeContext': "제주특별자치도 서귀포시 안덕면 한창로110번길 62\n\n월,수,목,금,토,일 11:00 ~ 20:30\n화요일 정기휴무\n\n하이얏호텔 총주방장 출신 사장\n깔끔한 반찬과 가성비 좋은 정식이 현지인에게 인기",
  },
  {
    'imagePath': 'assets/food10.jpg',
    'placeName': '우정회센타',
    'placeCount': '제주 자연산 회\n모듬회, 모듬해산물, 매운탕',
    'placeContext': "제주특별자치도 서귀포시 중앙로54번길 32\n\n매일 11:20 ~ 21:55\n\n서귀포 올레시장 안 많은 횟집 중 유독 장사가 잘되는 추천 횟집",
  },
  {
    'imagePath': 'assets/food11.jpg',
    'placeName': '영빈횟집',
    'placeCount': '딱새우회, 특점보물회\n갈치회, 고등어회',
    'placeContext': "제주특별자치도 서귀포시 칠십리로 129\n\n월,수,목,금,토,일 11:30 ~ 22:00\n15:30 ~ 16:30 브레이크타임, 화요일 정기휴무\n\n늘 당일 입고되는 신선한 활어회, 해산물\n횟집 근처에 유명 관광지 정방폭포, 천지연폭포 등 위치",
  },
  {
    'imagePath': 'assets/food12.jpg',
    'placeName': '당케올레국수',
    'placeCount': '보말칼국수, 보말죽\n성게칼국수, 고기국수',
    'placeContext': "제주 서귀포시 표선면 표선당포로 4\n\n월,화,수,금,토,일 08:00 ~ 17:00\n목요일 정기휴무\n\n당케올레국수는 보말, 성게, 한치 등 제주의 신선한 식재료를 사용하여 만든 다양한 음식들을 대접",
  },
  {
    'imagePath': 'assets/food13.jpg',
    'placeName': '카도돈카츠',
    'placeCount': '로스카츠, 히레카츠\n치즈카츠, 카레카츠',
    'placeContext': "제주특별자치도 서귀포시 대정읍 형제해안로 322-1\n\n월,화,수,목,금,토 11:30 ~ 20:30\n14:00 ~ 17:00 브레이크타임, 일요일 정기휴무\n\n제주도민들이 추천하는 제주도청 주변 돈카츠 맛집",
  },
  {
    'imagePath': 'assets/food14.jpg',
    'placeName': '삼춘네칼국수',
    'placeCount': '얼큰 딱새우 장칼국수\n전복보말칼국수',
    'placeContext': "제주특별자치도 서귀포시 안덕면 중산간서로 1815\n\n월,수,목,금,토,일 10:00 ~ 19:30\n화요일 정기휴무\n\n보말칼국수와 몸국, 돔베고기가맛있는 제주 전통음식점",
  },
  {
    'imagePath': 'assets/food15.jpg',
    'placeName': '대우정식당',
    'placeCount': '전복돌솥밥, 전복해물뚝배기\n전복회, 전복구이',
    'placeContext': "제주특별자치도 서귀포시 이어도로 866-37\n\n월,화,수,금,토,일 09:00 ~ 21:00\n15:00 ~ 17:00 브레이크타임, 목요일 정기휴무\n\n싱싱한 전복으로 만든 돌솥밥, 비빔양념과 마가린을 함께 비벼 먹는 전복 돌솥밥이 대표 메뉴\n자극적이지 않고 깔끔하고 든든한 한끼 식사를 제공",
  }
];

//숙소(공공데이터포텔 제주관광공사 숙소콘텐츠 api)
const hotel_picture = [
  {
    'imagePath': 'assets/hotel1.png',
    'placeName': '해피펜션',
    'placeCount': '펜션',
    'placeContext': "제주 제주시 월대1길 4\n\n제주 공항에서 15분 거리, 해안도로 이용 도보로 이호해수욕장 10분거리, 올레 17코스에 위치\n월대천 및 연대 해안, 편의 시설 다양, 월대천에서 어린이들 물놀이 가능",
  },
  {
    'imagePath': 'assets/hotel2.jpg',
    'placeName': '성산골든튤립호텔',
    'placeCount': '호텔',
    'placeContext': "제주 서귀포시 성산읍 일출로 31\n\n상시 146명 수용가능한 Modern Restaurant과 미온수로 운영되는 루프탑수영장(하절기 운영), 다양한 미팅이 가능한 비지니스센터, 전문운동기구를 갖춘 Fitness Room\n24시간 운영 편의점, 호텔 전지역 무료 wifi, 장애인지원시설, 지하1F 넓은 주차장",
  },
  {
    'imagePath': 'assets/hotel3.jpg',
    'placeName': '제주필하우스',
    'placeCount': '펜션',
    'placeContext': "제주 제주시 조천읍 일주동로 1415\n\n제주 필 하우스에서 10~20분 거리에 북촌하루방공원, 용두암, 삼성혈, 자연사박물관, 목석원, 김년, 만장굴, 미로공원등 다양한 유명관광지들이 위치",
  },
  {
    'imagePath': 'assets/hotel4.jpg',
    'placeName': '로즈비치',
    'placeCount': '펜션',
    'placeContext': "제주 제주시 조천읍 조함해안로 162\n\n확 트인 넓은 거실과 작은 무대로도 쓰이는 '미니콘서트 홀'이 있으며\n아주 예쁜 파란 벽으로 되어있는 주방 또한 아름다운 바다를 바라다보시면서 온 가족들이 함께 요리를 해서 드실 수 있는 낭만을 선사",
  },
  {
    'imagePath': 'assets/hotel5.jpg',
    'placeName': '제주밭담숲',
    'placeCount': '펜션',
    'placeContext': "제주 제주시 구좌읍 김녕남8길 55-64 제주밭담숲\n\n화산 송이 흙으로 만든 황토방에서 습도 조절이 자동적으로 되어 여행에 지친 피로를 깊은 수면으로 취할 수 있도록 도움\n내부도 천연 편백나무로 되어있으며 화장실 역시 천연 피톤치드가 풍부하게 꾸며져 있음",
  },
  {
    'imagePath': 'assets/hotel6.jpg',
    'placeName': '소노벨 제주',
    'placeCount': '콘도, 리조트',
    'placeContext': "제주 제주시 조천읍 신북로 577 대명리조트제주휴양콘도미니엄\n\n대명리조트에서 소노벨로 브랜드 변경\n소노벨 제주는 40년 동안 쌓아온 서비스와 경험을 바탕으로 지속성장을 위하여 새로운 출발을 하고자 합니다.\n브랜드 변경을 시작으로 국내에 집중되어 있던 비즈니스 포트폴리오를 해외로 확장함은 물론, 개발 단계부터 고객 서비스까지의 매뉴얼을 체계적으로 구축하여 경쟁력 강화에 집중할 것입니다.",
  },
  {
    'imagePath': 'assets/hotel7.jpg',
    'placeName': '오름게스트하우스',
    'placeCount': '게스트하우스',
    'placeContext': "제주 제주시 구좌읍 충렬로 147-19\n\n최근 내부 리모델링으로 더 쾌적해진 시골집이 되었습니다. 아침마다 오름을 오르고 구좌 특산물인 무.당근등 제철 식재료를 이용해 건강조식을 제공합니다.\n파티없고 조용한 게스트하우스라 쉼을 원하시는 분들에게는 더없이 조용하고 편안한 공간입니다.섬휘파람새 소리가 너무 아름답게 들리는 숲속의 비밀스런 아름다운 쉼의 공간입니다.",
  },
  {
    'imagePath': 'assets/hotel8.jpg',
    'placeName': '더뷰리조트',
    'placeCount': '펜션',
    'placeContext': "제주 서귀포시 남원읍 신흥앞동산로40번길 39\n\n실외수영장(하계), 바베큐장, 오피스휴게실, 세탁실 구비",
  },
  {
    'imagePath': 'assets/hotel9.jpg',
    'placeName': '단추스테이',
    'placeCount': '게스트하우스',
    'placeContext': "제주 제주시 한림읍 금능1길 15-8\n\n-게스트룸은 2개로 '똑딱이방'과 '단추방'이 있고, 각각 2인실로 운영하고 있습니다.\n똑딱이방은 퀸침대가 있는 2인실로 그레이톤 침구로 베딩을 구성하였습니다. 북쪽 창으로 한 조각의 바다뷰를 보실 수 있는 넓고 모던한 느낌입니다.\n단추방은 퀸침대가 있는 2인실로 화이트톤의 침구와 빨강머리앤의 소품들로 아기자기한 분위기의 방입니다. 남향의 따뜻한 햇살이 방안으로 들어와 밝고 포근한 느낌입니다.",
  },
  {
    'imagePath': 'assets/hotel10.jpg',
    'placeName': '팜핑제주카라반',
    'placeCount': '캠핑, 야영장',
    'placeContext': "제주 서귀포시 중산간서로400번길 105\n\n국내에서 보기 드문 농장 체험형 카라반\n중문색달해변, 중문관광단지 인접",
  }
];





//핫플레이스
const hotplace_picture = [
  {
    'imagePath': 'assets/haru.jpeg',
    'placeName': '하루필름 애월',
    'placeCount': '사진촬영 스튜디오',
    'placeContext': "제주 제주시 애월읍 애월해안로 672 1층\n\n하루필름에서 처음 제작한 플래그십 스토어입니다.\n일반 하루필름 매장과 다르게 하루필름 시그니처 음료들도\n맛 볼수 있습니다",
  },
  {
    'imagePath': 'assets/londonbagel.jpg',
    'placeName': '런던베이글뮤지엄',
    'placeCount': '베이커리카페',
    'placeContext': "제주 제주시 구좌읍 동복로 85 제2동 1층\n\n이미 전국적으로 유명한 런던베이글뮤지엄 베이커리카페가\n제주도에도 오픈했습니다.\n안국,도산점 못지않게 웨이팅이 많으니 오픈런은 필수!",
  },
  {
    'imagePath': 'assets/museum.jpeg',
    'placeName': '아르떼뮤지엄',
    'placeCount': '전시회',
    'placeContext': "제주 제주시 애월읍 어림비로 478\n\n강릉과 여수에 이어 세계 수준의 디지털 디자인 컴퍼니\n디스트릭트가 선보이는 몰입형 미디어아트 전시관입니다.",
  },
  {
    'imagePath': 'assets/knotted.png',
    'placeName': '카페노티드 제주',
    'placeCount': '베이커리카페',
    'placeContext': "제주특별자치도 제주시 애월읍 애월리 2527-3 1, 2층\n\nMZ세대에게 가장 사랑받는 카페 브랜드 중 하나 노티드가\n제주에도 오픈했습니다.\n일반 매장과 다르게 제주청귤 도넛,한라봉 크리미 같은\n시그니처 메뉴들을 만나보세요!",
  },
  {
    'imagePath': 'assets/981.jpg',
    'placeName': '9.81 파크 제주',
    'placeCount': '테마파크',
    'placeContext': "제주 제주시 애월읍 천덕로 880-24\n\n애월 바다와 한라산 사이에 위치하고 있으며,\n레이싱 카트,레이저 서바이벌,범퍼카 등등 다채로운 액티비티를 경험할 수 있는 테마파크입니다.",
  },
  {
    'imagePath': 'assets/randys.png',
    'placeName': '랜디스도넛 제주',
    'placeCount': '도넛카페',
    'placeContext': "제주제주 제주시 애월읍 애월로 27-1\n\n아이언맨 도넛으로 유명한 랜디스 도넛입니다",
  },
  {
    'imagePath': 'assets/high.png',
    'placeName': '하이엔드제주',
    'placeCount': '카페',
    'placeContext': "제주특별자치도 제주시 애월읍 애월리 2550-2\n\n통창 바다뷰가 예쁜 애월 대형 카페입니다.",
  }
];