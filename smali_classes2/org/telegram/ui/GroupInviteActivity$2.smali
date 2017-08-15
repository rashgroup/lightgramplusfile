.class Lorg/telegram/ui/GroupInviteActivity$2;
.super Ljava/lang/Object;
.source "GroupInviteActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupInviteActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupInviteActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupInviteActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v0

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->linkRow:I
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string/jumbo v1, "label"

    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v2}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "LinkCopied"

    const v2, 0x7f0802d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v2}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "InviteToGroupByLink"

    const v3, 0x7f080297

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "RevokeAlert"

    const v2, 0x7f080498

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "RevokeLink"

    const v2, 0x7f08049b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "RevokeButton"

    const v2, 0x7f08049a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/GroupInviteActivity$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupInviteActivity$2$1;-><init>(Lorg/telegram/ui/GroupInviteActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupInviteActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
