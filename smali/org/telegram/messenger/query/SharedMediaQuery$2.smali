.class final Lorg/telegram/messenger/query/SharedMediaQuery$2;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JII)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$uid:J

    iput p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$type:I

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v3, 0x1

    if-nez p2, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    new-instance v0, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;-><init>(Lorg/telegram/messenger/query/SharedMediaQuery$2;Lorg/telegram/tgnet/TLRPC$messages_Messages;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$uid:J

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$type:I

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$classGuid:I

    const/4 v6, 0x0

    # invokes: Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMediaCount(IJIIZ)V
    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$100(IJIIZ)V

    :cond_0
    return-void

    :cond_1
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    goto :goto_0
.end method
