class StudyInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<MentorInfo> mentor;

  StudyInfo({
    this.position,
    this.name,
    this.iconImage,
    this.description,
    this.mentor,
  });
}

class MentorInfo {
  final int position;
  final String nama;
  final String ttl;
  final String iconImage;
  final String education;
  final List<String> experience;
  final String phone;

  MentorInfo(
      {this.position,
      this.nama,
      this.ttl,
      this.iconImage,
      this.education,
      this.experience,
      this.phone});
}

List<StudyInfo> study = [
  StudyInfo(
      position: 1,
      name: 'English',
      iconImage: 'assets/english-language.png',
      description:
          "Belajar bahasa Inggris sekarang asik dan mudah, bersama mentor yang berpaengalaman dan tentunya menyenangkan.",
      mentor: [
        MentorInfo(
            nama: "Nurlaela Hayati",
            ttl: "Dusun Yaman, 10 Februari 1998",
            iconImage: "assets/ELA.jpeg",
            education: "S1 Pendidikan Bahasa Inggris, Universitas Hamzanwadi",
            phone: "081936855372",
            experience: [
              "Guru Bahasa Inggris MA NW Praida Kroya (2020-Sekarang)",
              "Bendahara Panitia Kegiatan ETC UKM English Speaking Club (2019 dan 2020)",
              "Pengurus UKM ESC Universitas Hamzanwadi (2019-2020)"
            ]),
        MentorInfo(
            nama: "Jannatu Adnin Al-Hafizi",
            ttl: "Keruak, 29 Agustus 1999",
            iconImage: "assets/adnin.jpg",
            education: "S1 Pendidikan Bahasa Inggris, Universitas Hamzanwadi",
            phone: "081907430956",
            experience: [
              "Tutor Bahasa Inggris Clinic English Camp(CEC) (2015-2016)",
              "Tutor Bahasa Inggris Madrasah Diniyah AL-Majidiyah(MADINA)  (2016-Sekarang)",
              "Anggota PKM HMPS Universitas Hamzanwadi (2017-2018)"
            ]),
      ]),
  StudyInfo(
      position: 2,
      name: 'Ekonomi',
      iconImage: 'assets/analytics.png',
      description:
          "Belajar Ekonomi sekarang asik dan mudah, bersama mentor yang berpaengalaman dan tentunya menyenangkan.",
      mentor: [
        MentorInfo(
            nama: "Yuniatin Andina",
            ttl: "Lendang Baiduri, 27 Juni 1999",
            iconImage: "assets/YuniatinAndina.jpg",
            education: "S1 Pendidikan Ekonomi, Universitas Hamzanwadi",
            phone: "087863400907",
            experience: [
              "Magang di SMAN 1 Selong",
              "Panitia MOK BEM FISE (2019-2020)",
              "Anggota BEM FISE Universitas Hamzanwadi (2019-2020)"
            ]),
        MentorInfo(
            nama: "Febrianty Sukma",
            ttl: "Bogor, 09 Februari 2000",
            iconImage: "assets/FebriantySukma.jpeg",
            education: "S1 Pendidikan Ekonomi, Universitas Hamzanwadi",
            phone: "087863400907",
            experience: [
              "Magang di SMAN 1 SAKRA BARAT",
              "Panitia MOK BEM FISE (2019-2020)",
              "Anggota BEM FISE Universitas Hamzanwadi (2019-2020)"
            ]),
      ]),
  StudyInfo(
      position: 3,
      name: 'Biologi',
      iconImage: 'assets/bacteria.png',
      description:
          "Belajar Biologi sekarang asik dan mudah, bersama mentor yang berpaengalaman dan tentunya menyenangkan.",
      mentor: []),
  StudyInfo(
      position: 4,
      name: 'Matematika',
      iconImage: 'assets/calculations.png',
      description:
          "Belajar Matematika sekarang asik dan mudah, bersama mentor yang berpaengalaman dan tentunya menyenangkan.",
      mentor: []),
];
