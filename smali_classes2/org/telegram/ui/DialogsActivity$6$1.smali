.class Lorg/telegram/ui/DialogsActivity$6$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$6;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$6;

.field final synthetic val$dialog_co:Landroid/app/Dialog;

.field final synthetic val$st_ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$6;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6$1;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$6$1;->val$st_ed:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$6$1;->val$dialog_co:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$6$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6$1;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0808aa

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$6$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v1, Lorg/telegram/messenger/MessagesController;->IsHiddenMainS:Z

    sget-object v2, Lorg/telegram/ui/DialogsActivity;->tabHost:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$1;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x4

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$1;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$6$1;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$6;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x64

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6$1;->val$dialog_co:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6$1;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0807fe

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
