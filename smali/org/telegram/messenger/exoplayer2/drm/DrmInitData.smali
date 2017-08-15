.class public final Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field public final schemeDataCount:I

.field private final schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    array-length v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>(Z[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method private varargs constructor <init>(Z[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p2}, [Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    :goto_0
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->access$000(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v2

    aget-object v3, v0, v1

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->access$000(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duplicate data for uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->access$000(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    array-length v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    return-void

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>(Z[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    check-cast p2, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->compare(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)I
    .locals 2

    sget-object v0, Lorg/telegram/messenger/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->access$000(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->access$000(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    # getter for: Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->access$000(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v0

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->access$000(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    check-cast p1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public get(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->hashCode:I

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->hashCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDatas:[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
