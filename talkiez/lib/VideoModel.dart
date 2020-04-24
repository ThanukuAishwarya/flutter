class VideoData {
  VideosList videosList;

  VideoData({this.videosList});

  VideoData.fromJson(Map<String, dynamic> json) {
    videosList = json['videosList'] != null
        ? new VideosList.fromJson(json['videosList'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.videosList != null) {
      data['videosList'] = this.videosList.toJson();
    }
    return data;
  }
}

class VideosList {
  List<Azure> azure;
 // List<Null> aws;

  VideosList({this.azure, /*this.aws*/});

  VideosList.fromJson(Map<String, dynamic> json) {
    if (json['azure'] != null) {
      azure = new List<Azure>();
      json['azure'].forEach((v) {
        azure.add(new Azure.fromJson(v));
      });
    }
    /*if (json['aws'] != null) {
      aws = new List<Null>();
      json['aws'].forEach((v) {
        aws.add(new Null.fromJson(v));
      });
    }*/
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.azure != null) {
      data['azure'] = this.azure.map((v) => v.toJson()).toList();
    }
    /*if (this.aws != null) {
      data['aws'] = this.aws.map((v) => v.toJson()).toList();
    }*/
    return data;
  }
}

class Azure {
  String id;
  String videoName;
  String videoLink;
  String cfLink;
  String cloudprov;
  String firstImageUrl;
  String firstImageCfUrl;
  String imageOrder;
  String hlsFileUrl;
  String hlsFileCdnUrl;

  Azure(
      this.id,
        this.videoName,
        this.videoLink,
        this.cfLink,
        this.cloudprov,
        this.firstImageUrl,
        this.firstImageCfUrl,
        this.imageOrder,
        this.hlsFileUrl,
        this.hlsFileCdnUrl);

  Azure.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    videoName = json['video_name'];
    videoLink = json['video_link'];
    cfLink = json['cf_link'];
    cloudprov = json['cloudprov'];
    firstImageUrl = json['first_image_url'];
    firstImageCfUrl = json['first_image_cf_url'];
    imageOrder = json['image_order'];
    hlsFileUrl = json['hls_file_url'];
    hlsFileCdnUrl = json[' '];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['video_name'] = this.videoName;
    data['video_link'] = this.videoLink;
    data['cf_link'] = this.cfLink;
    data['cloudprov'] = this.cloudprov;
    data['first_image_url'] = this.firstImageUrl;
    data['first_image_cf_url'] = this.firstImageCfUrl;
    data['image_order'] = this.imageOrder;
    data['hls_file_url'] = this.hlsFileUrl;
    data['hls_file_cdn_url'] = this.hlsFileCdnUrl;
    return data;
  }
}