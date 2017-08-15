.class Lorg/telegram/ui/PrivacyControlActivity$2$2;
.super Ljava/lang/Object;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iput p2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didUpdatedUserList(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->val$position:I

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1202(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1302(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2$2;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1400(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method
