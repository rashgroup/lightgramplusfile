.class Lorg/telegram/ui/tools/f/c$f;
.super Ljava/lang/Object;
.source "SpecialContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/c$f;->a:Lorg/telegram/ui/tools/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$f;->a:Lorg/telegram/ui/tools/f/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/c;->b(Lorg/telegram/ui/tools/f/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/f/a;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/tools/f/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$f;->a:Lorg/telegram/ui/tools/f/c;

    invoke-static {v1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$f;->a:Lorg/telegram/ui/tools/f/c;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/tools/f/c;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_0
    return-void
.end method
