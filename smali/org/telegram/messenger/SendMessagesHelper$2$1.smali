.class Lorg/telegram/messenger/SendMessagesHelper$2$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

.field final synthetic val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$2;Lorg/telegram/tgnet/TLRPC$TL_photo;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "can\'t load image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0
.end method
