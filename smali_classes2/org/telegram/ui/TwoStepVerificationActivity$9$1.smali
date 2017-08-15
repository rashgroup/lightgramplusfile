.class Lorg/telegram/ui/TwoStepVerificationActivity$9$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v2, 0x7f0803c8

    const v3, 0x7f080086

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-boolean v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->val$clear:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    new-array v1, v6, [B

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V
    invoke-static {v0, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2300(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "OK"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$9$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "YourPasswordSuccessText"

    const v2, 0x7f0805c1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "YourPasswordSuccess"

    const v2, 0x7f0805c0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "EMAIL_UNCONFIRMED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "OK"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$2;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$9$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "YourEmailAlmostThereText"

    const v2, 0x7f0805b9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "YourEmailAlmostThere"

    const v2, 0x7f0805b8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "EMAIL_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PasswordEmailInvalid"

    const v3, 0x7f0803f7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_5

    const-string/jumbo v1, "Seconds"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FloodWaitTime"

    const v4, 0x7f080213

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "Minutes"

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
