.class Lorg/telegram/ui/PrivacyControlActivity$2;
.super Ljava/lang/Object;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-ne p2, v3, :cond_3

    move v0, v1

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-ne v0, v3, :cond_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-ne p2, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-ne p2, v3, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z
    invoke-static {v3, v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$602(Lorg/telegram/ui/PrivacyControlActivity;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v2

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I
    invoke-static {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$802(Lorg/telegram/ui/PrivacyControlActivity;I)I

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v1, v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$002(Lorg/telegram/ui/PrivacyControlActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # invokes: Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$900(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    const-string/jumbo v0, "isNeverShare"

    :goto_3
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "isGroup"

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eqz v4, :cond_a

    :goto_4
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v0, v3}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity$2$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$2$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "isAlwaysShare"

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    new-instance v4, Lorg/telegram/ui/PrivacyUsersActivity;

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v5

    if-ne p2, v5, :cond_d

    :goto_6
    invoke-direct {v4, v0, v3, v1}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>(Ljava/util/ArrayList;ZZ)V

    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$2$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$2$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/PrivacyUsersActivity;->setDelegate(Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    :cond_c
    move v3, v2

    goto :goto_5

    :cond_d
    move v1, v2

    goto :goto_6
.end method
