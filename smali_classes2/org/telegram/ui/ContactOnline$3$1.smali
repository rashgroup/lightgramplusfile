.class Lorg/telegram/ui/ContactOnline$3$1;
.super Ljava/lang/Object;
.source "ContactOnline.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactOnline$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ContactOnline$3;

.field final synthetic val$st_ed:Landroid/widget/EditText;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactOnline$3;Landroid/widget/EditText;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContactOnline$3$1;->this$1:Lorg/telegram/ui/ContactOnline$3;

    iput-object p2, p0, Lorg/telegram/ui/ContactOnline$3$1;->val$st_ed:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/ContactOnline$3$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

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

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3$1;->this$1:Lorg/telegram/ui/ContactOnline$3;

    iget-object v0, v0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080776

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3$1;->this$1:Lorg/telegram/ui/ContactOnline$3;

    iget-object v1, v1, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3$1;->this$1:Lorg/telegram/ui/ContactOnline$3;

    iget-object v1, v1, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    const-string/jumbo v0, "LOG"

    const-string/jumbo v1, "is contact activity 01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3$1;->this$1:Lorg/telegram/ui/ContactOnline$3;

    iget-object v0, v0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0807fe

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method