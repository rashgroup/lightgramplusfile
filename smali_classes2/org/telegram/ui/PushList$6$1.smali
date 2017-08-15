.class Lorg/telegram/ui/PushList$6$1;
.super Ljava/lang/Object;
.source "PushList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PushList$6;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PushList$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PushList$6;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PushList$6$1;->this$1:Lorg/telegram/ui/PushList$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PushList$6$1;->this$1:Lorg/telegram/ui/PushList$6;

    iget-object v0, v0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$1100(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PushList$6$1;->this$1:Lorg/telegram/ui/PushList$6;

    iget-object v0, v0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$1100(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PushList$6$1;->this$1:Lorg/telegram/ui/PushList$6;

    iget-object v0, v0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$1100(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentHashtags()V

    goto :goto_0
.end method
