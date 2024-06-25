class Job {
  String company;
  String logoUrl;
  String isMark;
  String title;
  String location;
  String url;
  String time;
  List<String> req;

  Job(
    this.company,
    this.logoUrl,
    this.isMark,
    this.title,
    this.location,
    this.url,
    this.time,
    this.req,
  );

  factory Job.fromJson(Map<String, dynamic> json) {
    List<String> reqs;
    if (json['req'] is List) {
      reqs = List<String>.from(json['req']);
    } else {
      reqs = [json['req']];
    }
    return Job(
      json['company'],
      json['logoUrl'],
      json['isMark'],
      json['title'],
      json['location'],
      json['url'],
      json['time'],
      reqs,
    );
  }

  Map<String, dynamic> toJson() => {
        'company': company,
        'logoUrl': logoUrl,
        'isMark': isMark,
        'title': title,
        'location': location,
        'url': url,
        'time': time,
        'req': req,
      };
}
