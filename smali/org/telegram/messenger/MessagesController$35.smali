.class Lorg/telegram/messenger/MessagesController$35;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$35;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$35;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$35;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    if-nez p2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->offset:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$35;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$35;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$35;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->offset:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$35;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts:I

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts_count:I

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$35;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    :cond_1
    return-void
.end method
