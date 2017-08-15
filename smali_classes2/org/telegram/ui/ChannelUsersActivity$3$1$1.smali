.class Lorg/telegram/ui/ChannelUsersActivity$3$1$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelUsersActivity$3$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$3$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1$1;->this$2:Lorg/telegram/ui/ChannelUsersActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    if-eqz p1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$3$1$1$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$3$1$1$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$3$1$1;Lorg/telegram/tgnet/TLRPC$Updates;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
