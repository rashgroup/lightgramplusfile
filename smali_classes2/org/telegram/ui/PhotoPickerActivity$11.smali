.class Lorg/telegram/ui/PhotoPickerActivity$11;
.super Landroid/os/AsyncTask;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V
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

.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->canRetry:Z

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
    const-string/jumbo v1, "Ocp-Apim-Subscription-Key"

    sget-object v6, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string/jumbo v1, "Ocp-Apim-Subscription-Key"

    sget-object v6, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity$11;->isCancelled()Z
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

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$11;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->val$url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoPickerActivity$11;->downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity$11;->isCancelled()Z

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

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$11;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    move v5, v4

    move v0, v4

    move v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-ge v5, v3, :cond_4

    :try_start_2
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v7, "contentUrl"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_0
    new-instance v8, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v8}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    iput-object v7, v8, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    const-string/jumbo v9, "width"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    const-string/jumbo v9, "height"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    const-string/jumbo v9, "contentSize"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    const-string/jumbo v9, "contentUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v9, "thumbnailUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    :goto_4
    if-eqz v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRangeInserted(II)V

    :cond_1
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    :goto_6
    return-void

    :cond_4
    :try_start_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    if-nez v0, :cond_5

    :goto_7
    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z
    invoke-static {v3, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_5
    move v1, v4

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    move v2, v4

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRemoved(I)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_6

    :catch_2
    move-exception v0

    move v2, v4

    goto/16 :goto_2
.end method
