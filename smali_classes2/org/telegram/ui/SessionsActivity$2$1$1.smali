.class Lorg/telegram/ui/SessionsActivity$2$1$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/SessionsActivity$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$2$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$2$1$1$1;-><init>(Lorg/telegram/ui/SessionsActivity$2$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(I)V

    return-void
.end method
