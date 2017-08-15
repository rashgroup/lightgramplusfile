.class public Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "DownloadReceiver.java"


# instance fields
.field a:Landroid/app/AlarmManager;

.field b:Landroid/app/PendingIntent;

.field c:Landroid/app/PendingIntent;

.field d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "sdownload2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->d:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    const/16 v0, 0x64

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v0, 0xc8

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int/lit16 v1, v0, 0x12c

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    iget-object v2, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    add-int/lit16 v1, v0, 0x12c

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    iget-object v2, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .locals 9

    const/high16 v8, 0x8000000

    const/16 v7, 0xc8

    const/16 v3, 0x64

    const/4 v6, 0x2

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "Reminder_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "start_end"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, v3, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "Reminder_ID"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "start_end"

    const/16 v3, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .locals 9

    const-wide/32 v4, 0x240c8400

    const/high16 v8, 0x8000000

    const/4 v1, 0x2

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "start_end"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, p4, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v2, v6

    iget-object v6, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "start_end"

    const/16 v3, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    add-int/lit8 v2, p4, 0xa

    invoke-static {p1, v2, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a:Landroid/app/AlarmManager;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v2, v6

    iget-object v6, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->c:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string/jumbo v0, "jjj"

    const-string/jumbo v1, "alarm recieve"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "start_end"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Lorg/telegram/ui/tools/d/a/b;

    invoke-direct {v4, p1}, Lorg/telegram/ui/tools/d/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lorg/telegram/ui/tools/d/a/b;->a()Ljava/util/List;

    move-result-object v5

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "w_enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/tools/d/Receiver/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    const/4 v1, 0x0

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/a/a;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "w_disable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_4
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    const/4 v1, 0x0

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, ""

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->d()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lorg/telegram/ui/tools/d/Receiver/a;->a()V

    :cond_8
    sget-object v0, Lorg/telegram/ui/tools/d/b;->a:Lorg/telegram/ui/tools/d/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b;->a()V

    :cond_9
    return-void
.end method
