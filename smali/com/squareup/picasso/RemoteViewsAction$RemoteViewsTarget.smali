.class Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;
.super Ljava/lang/Object;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/RemoteViewsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsTarget"
.end annotation


# instance fields
.field final remoteViews:Landroid/widget/RemoteViews;

.field final viewId:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    iput p2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    iget v2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    iget v3, p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    add-int/2addr v0, v1

    return v0
.end method
