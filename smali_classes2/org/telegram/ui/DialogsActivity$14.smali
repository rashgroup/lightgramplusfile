.class Lorg/telegram/ui/DialogsActivity$14;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$14;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/h;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    sput v0, Lorg/telegram/ui/Dialogs;->selectedTab:I

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    sput v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    sget v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    :cond_0
    sget v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    :cond_1
    sget v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v4}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    :cond_2
    sget v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v5}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    :cond_3
    sget v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x7

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    :cond_4
    sget v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v1, 0x8

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    :cond_5
    sget v0, Lorg/telegram/ui/DialogsActivity;->slected_tab:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v1, 0x9

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;I)I

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/h;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method
