.class Lorg/telegram/ui/CountrySelectActivity$3;
.super Ljava/lang/Object;
.source "CountrySelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CountrySelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$000(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$200(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searchListViewAdapter:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$100(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->getItem(I)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v0

    :goto_0
    if-gez p2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getSectionForPosition(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;
    invoke-static {v2}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/CountrySelectActivity;->finishFragment()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->delegate:Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->delegate:Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;->didSelectCountry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
