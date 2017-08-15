.class Lorg/telegram/ui/Components/EditTextCaption$1;
.super Ljava/lang/Object;
.source "EditTextCaption.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextCaption;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100009

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    # invokes: Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V
    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$100(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100006

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    # invokes: Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V
    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$200(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100008

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    # invokes: Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V
    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$300(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$002(Lorg/telegram/ui/Components/EditTextCaption;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$002(Lorg/telegram/ui/Components/EditTextCaption;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
