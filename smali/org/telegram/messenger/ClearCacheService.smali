.class public Lorg/telegram/messenger/ClearCacheService;
.super Landroid/app/IntentService;
.source "ClearCacheService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "ClearCacheService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x2

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "keep_media"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ClearCacheService$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ClearCacheService$1;-><init>(Lorg/telegram/messenger/ClearCacheService;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
