.class Lorg/telegram/ui/TwoStepVerificationActivity$5;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    :cond_0
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1100(Lorg/telegram/ui/TwoStepVerificationActivity;)[B

    move-result-object v1

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1200(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1300(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    :cond_3
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1100(Lorg/telegram/ui/TwoStepVerificationActivity;)[B

    move-result-object v1

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->emailOnly:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1402(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    const/4 v1, 0x3

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$502(Lorg/telegram/ui/TwoStepVerificationActivity;I)I

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1500(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    :cond_5
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "TurnPasswordOffQuestion"

    const v2, 0x7f08053d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationActivity$5$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$5$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
