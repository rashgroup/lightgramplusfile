.class Lorg/telegram/messenger/MessagesController$87;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadCurrentState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$87;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$87;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    if-nez p2, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$87;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v2, 0x2

    # invokes: Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V
    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->access$5200(Lorg/telegram/messenger/MessagesController;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$87;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadCurrentState()V

    goto :goto_1
.end method
