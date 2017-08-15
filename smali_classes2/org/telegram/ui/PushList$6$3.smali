.class Lorg/telegram/ui/PushList$6$3;
.super Ljava/lang/Object;
.source "PushList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PushList$6;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PushList$6;

.field final synthetic val$isBot:Z

.field final synthetic val$isChat:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PushList$6;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PushList$6$3;->this$1:Lorg/telegram/ui/PushList$6;

    iput-boolean p2, p0, Lorg/telegram/ui/PushList$6$3;->val$isChat:Z

    iput-boolean p3, p0, Lorg/telegram/ui/PushList$6$3;->val$isBot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PushList$6$3;->this$1:Lorg/telegram/ui/PushList$6;

    iget-object v0, v0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->selectedDialog:J
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$2300(Lorg/telegram/ui/PushList;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x64

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/PushList$6$3;->this$1:Lorg/telegram/ui/PushList$6;

    iget-object v1, v1, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v1}, Lorg/telegram/ui/PushList;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-boolean v1, p0, Lorg/telegram/ui/PushList$6$3;->val$isChat:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    const v2, 0x7f08009b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PushList$6$3$1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/PushList$6$3$1;-><init>(Lorg/telegram/ui/PushList$6$3;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/PushList$6$3;->this$1:Lorg/telegram/ui/PushList$6;

    iget-object v1, v1, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PushList;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "AreYouSureDeleteThisChat"

    const v2, 0x7f08009f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2
.end method
