.class Lorg/telegram/ui/DialogsActivity$22$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$22;->didPressedOnSubDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$22;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$dialog_co:Landroid/app/Dialog;

.field final synthetic val$st_ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$22;Landroid/widget/EditText;Landroid/os/Bundle;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$22$1;->this$1:Lorg/telegram/ui/DialogsActivity$22;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$22$1;->val$st_ed:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$22$1;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$22$1;->val$dialog_co:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$22$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22$1;->this$1:Lorg/telegram/ui/DialogsActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0808aa

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$22$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22$1;->this$1:Lorg/telegram/ui/DialogsActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$22$1;->val$args:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22$1;->val$dialog_co:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22$1;->this$1:Lorg/telegram/ui/DialogsActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0807fe

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
