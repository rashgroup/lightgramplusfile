.class Lorg/telegram/ui/DialogsActivityF$11$3;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivityF$11;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivityF$11;

.field final synthetic val$isBot:Z

.field final synthetic val$isChat:Z

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivityF$11;ZZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->val$pinned:Z

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->val$isChat:Z

    iput-boolean p4, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->val$isBot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivityF;->access$2500(Lorg/telegram/ui/DialogsActivityF;)J

    move-result-wide v2

    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->val$pinned:Z

    if-nez v6, :cond_1

    :goto_0
    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->val$pinned:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$100(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivityF;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-ne p2, v4, :cond_3

    const-string/jumbo v1, "AreYouSureClearHistory"

    const v2, 0x7f080098

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivityF$11$3$1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/DialogsActivityF$11$3$1;-><init>(Lorg/telegram/ui/DialogsActivityF$11$3;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivityF;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivityF$11$3;->val$isChat:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    const v2, 0x7f08009b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "AreYouSureDeleteThisChat"

    const v2, 0x7f08009f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2
.end method
