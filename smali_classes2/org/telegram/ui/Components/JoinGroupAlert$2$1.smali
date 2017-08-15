.class Lorg/telegram/ui/Components/JoinGroupAlert$2$1;
.super Ljava/lang/Object;
.source "JoinGroupAlert.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/JoinGroupAlert$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert$2;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iput-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-nez p2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
