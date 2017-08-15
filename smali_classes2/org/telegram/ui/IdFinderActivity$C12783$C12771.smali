.class Lorg/telegram/ui/IdFinderActivity$C12783$C12771;
.super Ljava/lang/Object;
.source "IdFinderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IdFinderActivity$C12783;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C12771"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

.field final val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdFinderActivity$C12783;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->val$response:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const v3, -0xff4f00

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v1, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iput-object v0, v1, Lorg/telegram/ui/IdFinderActivity;->res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity;->res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    # getter for: Lorg/telegram/ui/IdFinderActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/IdFinderActivity;->access$000(Lorg/telegram/ui/IdFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "ChannelIsAvailble"

    const v2, 0x7f080676

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    # getter for: Lorg/telegram/ui/IdFinderActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/IdFinderActivity;->access$000(Lorg/telegram/ui/IdFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v1, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity;->res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    # setter for: Lorg/telegram/ui/IdFinderActivity;->cht:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1, v0}, Lorg/telegram/ui/IdFinderActivity;->access$102(Lorg/telegram/ui/IdFinderActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity;->res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    # getter for: Lorg/telegram/ui/IdFinderActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/IdFinderActivity;->access$000(Lorg/telegram/ui/IdFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "UserIsAvailble"

    const v2, 0x7f080812

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    # getter for: Lorg/telegram/ui/IdFinderActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/IdFinderActivity;->access$000(Lorg/telegram/ui/IdFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v1, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity;->res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    # setter for: Lorg/telegram/ui/IdFinderActivity;->usr:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v1, v0}, Lorg/telegram/ui/IdFinderActivity;->access$202(Lorg/telegram/ui/IdFinderActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    # getter for: Lorg/telegram/ui/IdFinderActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/IdFinderActivity;->access$000(Lorg/telegram/ui/IdFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "UserIsNotAvailble"

    const v2, 0x7f080813

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;->this$1:Lorg/telegram/ui/IdFinderActivity$C12783;

    iget-object v0, v0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    # getter for: Lorg/telegram/ui/IdFinderActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/IdFinderActivity;->access$000(Lorg/telegram/ui/IdFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
