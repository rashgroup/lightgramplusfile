.class Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;
.super Landroid/os/AsyncTask;
.source "BaseLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field final synthetic this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->canRetry:Z

    return-void
.end method

.method private downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v6, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept-Language"

    const-string/jumbo v6, "en-us,en;q=0.5"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept"

    const-string/jumbo v6, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept-Charset"

    const-string/jumbo v6, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1388

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12e

    if-eq v6, v7, :cond_0

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_0

    const/16 v7, 0x12f

    if-ne v6, v7, :cond_1

    :cond_0
    const-string/jumbo v6, "Location"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Set-Cookie"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string/jumbo v6, "Cookie"

    invoke-virtual {v2, v6, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v6, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept-Language"

    const-string/jumbo v6, "en-us,en;q=0.5"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept"

    const-string/jumbo v6, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept-Charset"

    const-string/jumbo v6, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v1

    move-object v6, v1

    move-object v1, v2

    move v2, v4

    :goto_0
    if-eqz v2, :cond_d

    if-eqz v1, :cond_2

    :try_start_2
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/16 v2, 0xca

    if-eq v1, v2, :cond_2

    const/16 v2, 0x130

    if-eq v1, v2, :cond_2

    :cond_2
    :goto_1
    if-eqz v6, :cond_c

    const v1, 0x8000

    :try_start_3
    new-array v7, v1, [B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-object v1, v5

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->isCancelled()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_4
    if-eqz v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    return-object v1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v6, v5

    :goto_6
    instance-of v1, v2, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v3

    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v2, v1

    move-object v1, v6

    move-object v6, v5

    goto :goto_0

    :cond_5
    instance-of v1, v2, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_7

    :cond_6
    instance-of v1, v2, Ljava/net/SocketException;

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "ECONNRESET"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_7

    :cond_7
    instance-of v1, v2, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_7

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    :try_start_6
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_9

    if-nez v1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :goto_8
    :try_start_7
    new-instance v1, Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v1, v7, v9, v8, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    move-object v1, v2

    goto :goto_2

    :cond_9
    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    move v3, v4

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    :goto_9
    :try_start_8
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    move-object v1, v5

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v2, v5

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_a

    :catch_7
    move-exception v2

    goto :goto_9

    :catch_8
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    goto :goto_6

    :cond_b
    move-object v2, v1

    goto :goto_8

    :cond_c
    move-object v1, v5

    goto/16 :goto_3

    :cond_d
    move-object v1, v5

    goto/16 :goto_4

    :cond_e
    move v1, v4

    goto :goto_7
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->val$url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 12

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "venues"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v1, v0, :cond_3

    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v0, 0x0

    const-string/jumbo v5, "categories"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "categories"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "icon"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v0, "icon"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%s64%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "prefix"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "suffix"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "location"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const-string/jumbo v7, "lat"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const-string/jumbo v7, "lng"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    const-string/jumbo v6, "address"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "address"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    :goto_1
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    const-string/jumbo v0, "foursquare"

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v6, "city"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "city"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iput-boolean v2, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_3
    const-string/jumbo v6, "state"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "state"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "country"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "country"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%f,%f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iput-boolean v2, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    goto :goto_3
.end method
