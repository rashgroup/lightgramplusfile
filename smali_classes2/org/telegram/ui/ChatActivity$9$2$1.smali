.class Lorg/telegram/ui/ChatActivity$9$2$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$9$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$9$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$9$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9$2$1;->this$2:Lorg/telegram/ui/ChatActivity$9$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    new-instance v0, Lorg/telegram/ui/ChatActivity$9$2$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$9$2$1$1;-><init>(Lorg/telegram/ui/ChatActivity$9$2$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
