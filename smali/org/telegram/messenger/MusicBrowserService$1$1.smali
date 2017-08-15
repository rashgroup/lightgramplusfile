.class Lorg/telegram/messenger/MusicBrowserService$1$1;
.super Ljava/lang/Object;
.source "MusicBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MusicBrowserService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MusicBrowserService$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MusicBrowserService$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->chatsLoaded:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/MusicBrowserService;->access$702(Lorg/telegram/messenger/MusicBrowserService;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z
    invoke-static {v0, v4}, Lorg/telegram/messenger/MusicBrowserService;->access$802(Lorg/telegram/messenger/MusicBrowserService;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->val$parentMediaId:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v2, v2, Lorg/telegram/messenger/MusicBrowserService$1;->val$result:Landroid/service/media/MediaBrowserService$Result;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MusicBrowserService;->access$900(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v1, v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1002(Lorg/telegram/messenger/MusicBrowserService;I)I

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$300(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$400(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v2, v2, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v2, v2, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$500(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v2, v2, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v2, v2, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string/jumbo v2, "android.media.metadata.DURATION"

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string/jumbo v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string/jumbo v2, "android.media.metadata.TITLE"

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v0

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v0, v0, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1200(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v1

    const-string/jumbo v2, "DELETED USER"

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$600(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v2, v2, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v2, v2, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v1, v1, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v1

    const-string/jumbo v2, "DELETED CHAT"

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
