.class Lorg/telegram/ui/SettingsActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$2;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$2;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SettingsActivity;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$2;->this$0:Lorg/telegram/ui/SettingsActivity;

    new-instance v1, Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ChangeNameActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$2;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$2;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AreYouSureLogout"

    const v2, 0x7f0800a1

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

    new-instance v2, Lorg/telegram/ui/SettingsActivity$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SettingsActivity$2$1;-><init>(Lorg/telegram/ui/SettingsActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$2;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
