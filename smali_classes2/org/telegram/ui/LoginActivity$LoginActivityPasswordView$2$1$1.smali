.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x1

    const v7, 0x7f080086

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "RestoreEmailSent"

    const v3, 0x7f080490

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;->email_pattern:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v2, "AppName"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v2, "OK"

    const v3, 0x7f0803c8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

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
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v2, "AppName"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

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
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
