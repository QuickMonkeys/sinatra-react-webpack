class ClientsController < Sinatra::Base

# Just a sample using static data to response ajax call from react component.
get '/clients.json' do
  content_type :json
  [{
      "id":1,
      "first_name":"Bobby",
      "last_name":"Bradley",
      "email":"bbradley5@scientificamerican.com",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/6.jpg"
   },
   {
      "id":2,
      "first_name":"Sandra",
      "last_name":"Carroll",
      "email":"scarrolle@washingtonpost.com",
      "gender":"F",
      "photo": "https://randomuser.me/api/portraits/thumb/women/15.jpg"
   },
   {
    "id":3,
    "first_name":"Sarah",
    "last_name":"Davis",
    "email":"sdavisa@usda.gov",
    "gender":"F",
    "photo": "https://randomuser.me/api/portraits/thumb/women/11.jpg"
    },	
    {
      "id":4,
      "first_name":"Matthew",
      "last_name":"Diaz",
      "email":"mdiaz8@narod.ru",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/9.jpg"
    },	   
    {
      "id":5,
      "first_name":"Brandon",
      "last_name":"Fields",
      "email":"bfields1@oracle.com",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/2.jpg"
    },
    {
      "id":6,
      "first_name":"Jeremy",
      "last_name":"Fowler",
      "email":"jfowler4@dagondesign.com",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/5.jpg"
    },
    {
    "id":7,
    "first_name":"Mary",
    "last_name":"Langley",
    "email":"mlongf@biglobe.ne.jp",
    "gender":"F",
    "photo": "https://randomuser.me/api/portraits/thumb/women/16.jpg"
    },
    {
      "id":8,
      "first_name":"Keith",
      "last_name":"Laurent",
      "email":"klong0@nhs.uk",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/1.jpg"
    },
    {
      "id":9,
      "first_name":"Jeffrey",
      "last_name":"Mccoy",
      "email":"jmccoy7@prnewswire.com",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/8.jpg"
    },
    {
      "id":10,
      "first_name":"Terry",
      "last_name":"Taylor",
      "email":"ttaylor9@ow.ly",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/10.jpg"
    },
    {
      "id":11,
      "first_name":"Benjamin",
      "last_name":"Ramirez",
      "email":"bramirez2@parallels.com",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/3.jpg"
    },
    {
    "id":12,
    "first_name":"Earl",
    "last_name":"Ryan",
    "email":"eryang@telegraph.co.uk",
    "gender":"M",
    "photo": "https://randomuser.me/api/portraits/thumb/men/17.jpg"
    },	 
    {
      "id":13,
      "first_name":"Jonathan",
      "last_name":"Russell",
      "email":"jrussell3@uiuc.edu",
      "gender":"M",
      "photo": "https://randomuser.me/api/portraits/thumb/men/4.jpg"
    },
    {
      "id":14,
      "first_name":"Catherine",
      "last_name":"Watkins",
      "email":"cwatkins6@cargocollective.com",
      "gender":"F",
      "photo": "https://randomuser.me/api/portraits/thumb/women/7.jpg"
    },
    {
      "id":15,
      "first_name":"Deborah",
      "last_name":"Young",
      "email":"dyoungb@scientificamerican.com",
      "gender":"F",
      "photo": "https://randomuser.me/api/portraits/thumb/women/12.jpg"
     }].to_json
  end
end
