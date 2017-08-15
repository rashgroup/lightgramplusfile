.class Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v3, 0x7f080086

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$6602(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(I)V

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v0, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needFinishActivity()V
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onPasscodeError(Z)V
    invoke-static {v0, v5}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$6700(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_2

    const-string/jumbo v1, "Seconds"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FloodWaitTime"

    const v4, 0x7f080213

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Minutes"

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
