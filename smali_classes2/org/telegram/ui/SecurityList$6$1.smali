.class Lorg/telegram/ui/SecurityList$6$1;
.super Ljava/lang/Object;
.source "SecurityList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecurityList$6;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SecurityList$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecurityList$6;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecurityList$6$1;->this$1:Lorg/telegram/ui/SecurityList$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$6$1;->this$1:Lorg/telegram/ui/SecurityList$6;

    iget-object v0, v0, Lorg/telegram/ui/SecurityList$6;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$1100(Lorg/telegram/ui/SecurityList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$6$1;->this$1:Lorg/telegram/ui/SecurityList$6;

    iget-object v0, v0, Lorg/telegram/ui/SecurityList$6;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$1100(Lorg/telegram/ui/SecurityList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecurityList$6$1;->this$1:Lorg/telegram/ui/SecurityList$6;

    iget-object v0, v0, Lorg/telegram/ui/SecurityList$6;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$1100(Lorg/telegram/ui/SecurityList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentHashtags()V

    goto :goto_0
.end method
