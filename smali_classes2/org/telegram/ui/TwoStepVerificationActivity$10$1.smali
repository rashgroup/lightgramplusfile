.class Lorg/telegram/ui/TwoStepVerificationActivity$10$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$10;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v3, 0x7f080086

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$10;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;->current_password_hash:[B

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z
    invoke-static {v0, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1902(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1700(Lorg/telegram/ui/TwoStepVerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PASSWORD_HASH_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V
    invoke-static {v0, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2500(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

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
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FloodWaitTime"

    const v4, 0x7f080213

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Minutes"

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
