.class Lorg/telegram/ui/GroupInviteActivity$3$1;
.super Ljava/lang/Object;
.source "GroupInviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupInviteActivity$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupInviteActivity$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupInviteActivity$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v0, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    # setter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v1, v0}, Lorg/telegram/ui/GroupInviteActivity;->access$202(Lorg/telegram/ui/GroupInviteActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-boolean v0, v0, Lorg/telegram/ui/GroupInviteActivity$3;->val$newRequest:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "RevokeAlertNewLink"

    const v2, 0x7f080499

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "RevokeLink"

    const v2, 0x7f08049b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupInviteActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/GroupInviteActivity;->loading:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/GroupInviteActivity;->access$602(Lorg/telegram/ui/GroupInviteActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$700(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
