.class Lorg/telegram/ui/SettingsActivity$9;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
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

    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3700(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3700(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_2
    add-int/2addr v0, v2

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->extraHeight:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # setter for: Lorg/telegram/ui/SettingsActivity;->extraHeight:I
    invoke-static {v1, v0}, Lorg/telegram/ui/SettingsActivity;->access$3802(Lorg/telegram/ui/SettingsActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    # invokes: Lorg/telegram/ui/SettingsActivity;->needLayout()V
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3900(Lorg/telegram/ui/SettingsActivity;)V

    goto :goto_0
.end method
