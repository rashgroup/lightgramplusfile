.class Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;
.super Ljava/lang/Object;
.source "CountrySelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$1000(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    # getter for: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->countries:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$1100(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object v3, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    # invokes: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$1000(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
