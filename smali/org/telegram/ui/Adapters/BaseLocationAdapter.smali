.class public abstract Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "BaseLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    }
.end annotation


# instance fields
.field private currentTask:Landroid/os/AsyncTask;
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
.end field

.field private delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

.field protected iconUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastSearchLocation:Landroid/location/Location;

.field protected places:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field protected searching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public searchDelayed(Ljava/lang/String;Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    invoke-virtual {p2, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-eqz v0, :cond_1

    iput-boolean v10, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "https://api.foursquare.com/v2/venues/search/?v=%s&locale=en&limit=25&client_id=%s&client_secret=%s&ll=%s%s"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v4, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    sget-object v4, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    sget-object v4, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%f,%f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&query="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iput-boolean v10, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    return-void
.end method
