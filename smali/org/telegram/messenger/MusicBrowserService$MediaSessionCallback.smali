.class final Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MusicBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MusicBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MusicBrowserService;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;-><init>(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handlePauseRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1400(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$300(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$400(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v4, v3}, Lorg/telegram/messenger/MusicBrowserService;->access$1002(Lorg/telegram/messenger/MusicBrowserService;I)I

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "auto_lastSelectedDialog"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v5}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    if-lez v3, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$500(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1300(Lorg/telegram/messenger/MusicBrowserService;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v0

    const-string/jumbo v1, "DELETED USER"

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$600(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v0

    neg-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v0

    const-string/jumbo v1, "DELETED CHAT"

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$500(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$600(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v0

    neg-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onSeekTo(J)V
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playNextMessage()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playPreviousMessage()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playMessageAtIndex(I)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1300(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handleStopRequest(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1500(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V

    return-void
.end method
