part of '../onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  PageController pageController;

  List<Widget> _pages = [
    OnboardingSlider(
      title: 'Choose A Tasty Dish',
      description: 'Order anything you want from your Favorite restaurant.',
      image: 'assets/img/onboarding_1.svg',
    ),
    OnboardingSlider(
      title: 'Easy Payment',
      description:
          'Payment made easy through debit card, credit card  & more ways to pay for your food.',
      image: 'assets/img/onboarding_2.svg',
    ),
    OnboardingSlider(
      title: 'Enjoy the Taste!',
      description:
          'Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health.',
      image: 'assets/img/onboarding_3.svg',
    ),
  ];

  _onChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onChange,
            controller: pageController,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Positioned(
            bottom: 185,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    _pages.length,
                    (int index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 30,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == _currentPage)
                              ? Color(0xFFFFD200)
                              : Color(0xFFC4C4C4),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                'assets/img/footer_background.svg',
                width: MediaQuery.of(context).size.width,
              ),
            ],
          )
        ],
      ),
    );
  }
}
