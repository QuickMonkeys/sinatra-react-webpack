#%w(/clients).each do |path|
  get '/clients.json' do
    content_type :json
    [ {
        "id":1,
        "first_name":"Keith",
        "last_name":"Laurent",
        "email":"klong0@nhs.uk",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/1.jpg"
     },
     {
        "id":2,
        "first_name":"Brandon",
        "last_name":"Fields",
        "email":"bfields1@oracle.com",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/2.jpg"
     },
     {
        "id":3,
        "first_name":"Benjamin",
        "last_name":"Ramirez",
        "email":"bramirez2@parallels.com",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/3.jpg"
     },
     {
        "id":4,
        "first_name":"Jonathan",
        "last_name":"Russell",
        "email":"jrussell3@uiuc.edu",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/4.jpg"
     },
     {
        "id":5,
        "first_name":"Jeremy",
        "last_name":"Fowler",
        "email":"jfowler4@dagondesign.com",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/5.jpg"
     },
     {
        "id":6,
        "first_name":"Bobby",
        "last_name":"Bradley",
        "email":"bbradley5@scientificamerican.com",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/6.jpg"
     },
     {
        "id":7,
        "first_name":"Catherine",
        "last_name":"Watkins",
        "email":"cwatkins6@cargocollective.com",
        "gender":"F",
        "photo": "https://randomuser.me/api/portraits/thumb/women/7.jpg"
     },
     {
        "id":8,
        "first_name":"Jeffrey",
        "last_name":"Mccoy",
        "email":"jmccoy7@prnewswire.com",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/8.jpg"
     },
     {
        "id":9,
        "first_name":"Matthew",
        "last_name":"Diaz",
        "email":"mdiaz8@narod.ru",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/9.jpg"
     },
     {
        "id":10,
        "first_name":"Terry",
        "last_name":"Taylor",
        "email":"ttaylor9@ow.ly",
        "gender":"M",
        "photo": "https://randomuser.me/api/portraits/thumb/men/10.jpg"
     } ].to_json
    
    #@clients = Client.all
    #erb :'client/index'
    
  end
#end