.class Lorg/telegram/ui/Components/RecyclerListView$1;
.super Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1500(Lorg/telegram/ui/Components/RecyclerListView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1400(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1500(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1500(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method
