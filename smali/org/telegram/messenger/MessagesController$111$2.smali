.class Lorg/telegram/messenger/MessagesController$111$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$111;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$111;

.field final synthetic val$update:Lorg/telegram/tgnet/TLRPC$Update;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$111;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$111$2;->this$1:Lorg/telegram/messenger/MessagesController$111;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$111$2;->val$update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$111$2;->this$1:Lorg/telegram/messenger/MessagesController$111;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$111;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$111$2;->val$update:Lorg/telegram/tgnet/TLRPC$Update;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    return-void
.end method
