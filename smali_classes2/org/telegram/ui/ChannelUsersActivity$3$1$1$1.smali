.class Lorg/telegram/ui/ChannelUsersActivity$3$1$1$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$3$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ChannelUsersActivity$3$1$1;

.field final synthetic val$updates:Lorg/telegram/tgnet/TLRPC$Updates;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$3$1$1;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1$1$1;->this$3:Lorg/telegram/ui/ChannelUsersActivity$3$1$1;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1$1$1;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1$1$1;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    return-void
.end method
