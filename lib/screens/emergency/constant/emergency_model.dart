class EmergencyModel {
  String name;
  String phone;
  String? phone2;
  String image;

  EmergencyModel({
    required this.name,
    required this.phone,
    this.phone2,
    required this.image,
  });
}

List<EmergencyModel> emergencyNumberList = [
  EmergencyModel(
      name: 'National Emergency Hotline Number',
      phone: '999	',
      image: 'images/999.png'),
  EmergencyModel(
      name: 'National Hotline Number', phone: '333', image: 'images/333.png'),
  EmergencyModel(
      name: 'National helpline center for violence against women',
      phone: '10921',
      image: 'images/call4.png'),
  EmergencyModel(
      name: 'Kaan Pete Roi',
      phone: '01779554391',
      phone2: '01779554392',
      image: 'images/call4.png'),
  EmergencyModel(
      name: 'Mental Health & Psychosocial helpline',
      phone: '01688709965',
      phone2: '01688709966',
      image: 'images/call4.png'),
  EmergencyModel(
      name: 'Mental Health & Psychosocial helpline',
      phone: '1985275286',
      phone2: '1852035634',
      image: 'images/call4.png'),
  EmergencyModel(
      name: 'Moner Bondhu	Mental Health & Psychosocial helpline',
      phone: '1776632344',
      image: 'images/call4.png'),
  EmergencyModel(
      name: 'Sajida Foundation	Mental Health & Psychosocial helpline',
      phone: '9678771511',
      phone2: '0177 7771515',
      image: 'images/call4.png'),
  EmergencyModel(
      name:
          'Dosh Unisher Mor Helpdesk for GBV/SRHR/psychosocial support	Mental Health & Psychosocial helpline',
      phone: '9612600600',
      image: 'images/call4.png'),
  EmergencyModel(
      name:
          'Ain o Salish Kendra (ASK)	Legal assistance, emergency shelter and mental healthcare',
      phone: '01724415677',
      image: 'images/call4.png'),
  EmergencyModel(
      name:
          'Bandhu Social Welfare Society (In collaboration with Ministry of Social Welfare)	Psychosocial support as well as guideline for SRHR and legal aspects',
      phone: '01714048418',
      image: 'images/call4.png'),
  EmergencyModel(
      name:
          'Helpline in Cox’s Bazar	Friendship Bangladesh	Advices on primary healthcare, SGBV and psychosocial support',
      phone: '01880081111',
      image: 'images/call4.png'),
  EmergencyModel(
      name: 'For Chittagong Region, including Cox’s Bazar district',
      phone: '01888066747',
      image: 'images/call4.png'),
  EmergencyModel(
      name:
          'For Dhaka and rest of the districts	Action Against Hunger (ACF BD)	Psychosocial support and case management',
      phone: '01869859757',
      image: 'images/call4.png'),
];
