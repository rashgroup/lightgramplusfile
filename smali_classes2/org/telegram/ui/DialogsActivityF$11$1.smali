.class Lorg/telegram/ui/DialogsActivityF$11$1;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivityF$11;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivityF$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivityF$11;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$11$1;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11$1;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11$1;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11$1;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentHashtags()V

    goto :goto_0
.end method
